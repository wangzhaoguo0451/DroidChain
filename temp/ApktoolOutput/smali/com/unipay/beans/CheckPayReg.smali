.class public Lcom/unipay/beans/CheckPayReg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public HRet:I

.field public Passwd:Ljava/lang/String;

.field public Usertype:I

.field public imsi:Ljava/lang/String;

.field public mdn:Ljava/lang/String;

.field public smsUp:I

.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckPayReg;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckPayReg;->mdn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckPayReg;->Passwd:Ljava/lang/String;

    iput v1, p0, Lcom/unipay/beans/CheckPayReg;->smsUp:I

    iput v1, p0, Lcom/unipay/beans/CheckPayReg;->HRet:I

    iput v1, p0, Lcom/unipay/beans/CheckPayReg;->status:I

    iput v1, p0, Lcom/unipay/beans/CheckPayReg;->Usertype:I

    iput-object p1, p0, Lcom/unipay/beans/CheckPayReg;->imsi:Ljava/lang/String;

    iput-object p2, p0, Lcom/unipay/beans/CheckPayReg;->mdn:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/beans/CheckPayReg;->Passwd:Ljava/lang/String;

    iput p4, p0, Lcom/unipay/beans/CheckPayReg;->smsUp:I

    iput p5, p0, Lcom/unipay/beans/CheckPayReg;->HRet:I

    iput p6, p0, Lcom/unipay/beans/CheckPayReg;->status:I

    iput p7, p0, Lcom/unipay/beans/CheckPayReg;->Usertype:I

    return-void
.end method


# virtual methods
.method public getHRet()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/CheckPayReg;->HRet:I

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckPayReg;->imsi:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckPayReg;->imsi:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/unipay/beans/CheckPayReg;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckPayReg;->mdn:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckPayReg;->mdn:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/unipay/beans/CheckPayReg;->mdn:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/CheckPayReg;->Passwd:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/CheckPayReg;->Passwd:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/unipay/beans/CheckPayReg;->Passwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsUp()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/CheckPayReg;->smsUp:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/CheckPayReg;->status:I

    return v0
.end method

.method public getUsertype()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/CheckPayReg;->Usertype:I

    return v0
.end method

.method public setHRet(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/CheckPayReg;->HRet:I

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckPayReg;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckPayReg;->mdn:Ljava/lang/String;

    return-void
.end method

.method public setPasswd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/CheckPayReg;->Passwd:Ljava/lang/String;

    return-void
.end method

.method public setSmsUp(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/CheckPayReg;->smsUp:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/CheckPayReg;->status:I

    return-void
.end method

.method public setUsertype(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/CheckPayReg;->Usertype:I

    return-void
.end method
