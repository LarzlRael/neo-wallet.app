import { Request, Response } from 'express';
import bcrypt from 'bcryptjs';

import Usuario from '../models/usuario';
import { generarJWT } from '../helpers/jwt';


export const registerUser = async (req: Request, res: Response) => {


    const { email, password } = req.body;

    try {
        const existeEmail = await Usuario.findOne({ email });

        if (existeEmail) {
            return res.status(400).json({
                ok: false,
                msg: 'EL correo ya fue registrado'
            });
        }

        const usuario = new Usuario(req.body);

        //Encriptar contraseña
        const salt = bcrypt.genSaltSync();
        usuario.password = bcrypt.hashSync(
            password, salt
        );

        await usuario.save();

        //generar el JWT_KEY

        const token = await generarJWT(usuario.id);
        res.json({
            ok: true,
            usuario,
            token
        });

    } catch (error) {
        console.log(error);
    }
}

export const login = async (req: Request, res: Response) => {
    const { password, email } = req.body;

    const userExist = await Usuario.findOne({ email });

    if (!userExist) {
        return res.json({
            ok: false,
            msg: 'EL usuario no existe'
        });
    }
    const validPassword = bcrypt.compareSync(password, userExist.password!);
    if (!validPassword) {
        return res.status(400).json({
            ok: false,
            msg: 'Contraseña incorrecta'
        });
    }
    // generar token

    const token = await generarJWT(userExist.id);
    res.json({
        ok: true,
        usuario: userExist,
        token
    });
}


export const renewToken = async (req: Request, res: Response) => {

    const { uid } = req;

    // generar un nuevo JWT, generarJWT
    const token = await generarJWT(uid);

    // obtener el suaurio por el UID, Usuario.findbyId...
    const usuario = await Usuario.findById(uid);
    res.json({
        ok: true,
        usuario,
        token
    });
}



/* com.example.neo_wallet
com.neo.neo_wallet */