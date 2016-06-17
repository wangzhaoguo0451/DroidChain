.class public Lcom/unipay/beans/GameBaseBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _$1:Ljava/lang/String;

.field private _$2:Ljava/lang/String;

.field private _$3:Ljava/lang/String;

.field private _$4:Ljava/lang/String;

.field private _$5:Ljava/lang/String;

.field private _$6:Ljava/lang/String;

.field private _$7:Ljava/lang/String;

.field private _$8:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$8:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$7:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$6:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$4:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$1:Ljava/lang/String;

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$6:Ljava/lang/String;

    iput-object p2, p0, Lcom/unipay/beans/GameBaseBean;->_$7:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/beans/GameBaseBean;->_$8:Ljava/lang/String;

    iput-object p4, p0, Lcom/unipay/beans/GameBaseBean;->_$5:Ljava/lang/String;

    iput-object p5, p0, Lcom/unipay/beans/GameBaseBean;->_$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/unipay/beans/GameBaseBean;->_$3:Ljava/lang/String;

    iput-object p7, p0, Lcom/unipay/beans/GameBaseBean;->_$2:Ljava/lang/String;

    iput-object p8, p0, Lcom/unipay/beans/GameBaseBean;->_$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$6:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$1:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$5:Ljava/lang/String;

    return-object v0
.end method

.method public getCpid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$7:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$3:Ljava/lang/String;

    return-object v0
.end method

.method public getPrmCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$8:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$4:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GameBaseBean;->_$2:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$6:Ljava/lang/String;

    return-void
.end method

.method public setChannelid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$1:Ljava/lang/String;

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$5:Ljava/lang/String;

    return-void
.end method

.method public setCpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$7:Ljava/lang/String;

    return-void
.end method

.method public setGame(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$3:Ljava/lang/String;

    return-void
.end method

.method public setPrmCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$8:Ljava/lang/String;

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$4:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GameBaseBean;->_$2:Ljava/lang/String;

    return-void
.end method
