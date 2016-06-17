.class public Lcom/unipay/beans/BuyAppTool2Rsp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public AppId:Ljava/lang/String;

.field public HRet:Ljava/lang/String;

.field public MENO:Ljava/lang/String;

.field public callbackURL:Ljava/lang/String;

.field public consumeCode:Ljava/lang/String;

.field public cpId:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public mdn:Ljava/lang/String;

.field public orderid:Ljava/lang/String;

.field public payType:Ljava/lang/String;

.field public payfee:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->cpId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->AppId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->consumeCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->HRet:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->orderid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->callbackURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->status:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->MENO:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->payType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->mdn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->payfee:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->AppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->callbackURL:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->consumeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->cpId:Ljava/lang/String;

    return-object v0
.end method

.method public getHRet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->HRet:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMENO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->MENO:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->mdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayfee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->payfee:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->AppId:Ljava/lang/String;

    return-void
.end method

.method public setCallbackURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->callbackURL:Ljava/lang/String;

    return-void
.end method

.method public setConsumeCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->consumeCode:Ljava/lang/String;

    return-void
.end method

.method public setCpId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->cpId:Ljava/lang/String;

    return-void
.end method

.method public setHRet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->HRet:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMENO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->MENO:Ljava/lang/String;

    return-void
.end method

.method public setMdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->mdn:Ljava/lang/String;

    return-void
.end method

.method public setOrderid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->orderid:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->payType:Ljava/lang/String;

    return-void
.end method

.method public setPayfee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->payfee:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/BuyAppTool2Rsp;->status:Ljava/lang/String;

    return-void
.end method
