export interface IPayload {
    uid: string;
    iat: number;
    exp: number;
}
export interface IWallet {
    _id: any;
    balance: number;
    walletName: string;
    idUser: string;
    block: boolean;
}

export interface IUser {
    name: string;
    email: string;
    password?: string;
    online?: boolean;
    wallets: IWallet[]
}