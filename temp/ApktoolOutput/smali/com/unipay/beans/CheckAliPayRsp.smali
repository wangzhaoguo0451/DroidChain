.class public Lcom/unipay/beans/CheckAliPayRsp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public AppId:Ljava/lang/String;

.field public HRet:Ljava/lang/String;

.field public MENO:Ljava/lang/String;

.field public consumeCode:Ljava/lang/String;

.field public encrypt:Ljava/lang/String;

.field public orderid:Ljava/lang/String;

.field public payfee:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->HRet:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->orderid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->encrypt:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->status:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->MENO:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->payfee:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->AppId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->consumeCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->AppId:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->consumeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->encrypt:Ljava/lang/String;

    return-object v0
.end method

.method public getHRet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->HRet:Ljava/lang/String;

    return-object v0
.end method

.method public getMENO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->MENO:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method public getPayfee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->payfee:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckAliPayRsp;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckAliPayRsp;->AppId:Ljava/lang/String;

    return-void
.end method

.method public setConsumeCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckAliPayRsp;->consumeCode:Ljava/lang/String;

    return-void
.end method

.method public setEncrypt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckAliPayRsp;->encrypt:Ljava/lang/String;

    return-void
.end method

.method public setHRet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckAliPayRsp;->HRet:Ljava/lang/String;

    return-void
.end method

.method public setMENO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckAliPayRsp;->MENO:Ljava/lang/String;

    return-void
.end method

.method public setOrderid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckAliPayRsp;->orderid:Ljava/lang/String;

    return-void
.end method

.method public setPayfee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckAliPayRsp;->payfee:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckAliPayRsp;->status:Ljava/lang/String;

    return-void
.end method
