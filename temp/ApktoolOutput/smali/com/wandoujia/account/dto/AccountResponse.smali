.class public Lcom/wandoujia/account/dto/AccountResponse;
.super Ljava/lang/Object;
.source "AccountResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private args:Ljava/lang/String;

.field private error:I

.field private member:Lcom/wandoujia/account/dto/AccountBean;

.field private msg:Ljava/lang/String;

.field private verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/dto/AccountResponse;->setAccountError(Lcom/wandoujia/account/dto/AccountError;)V

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/wandoujia/account/dto/AccountResponse;->error:I

    .line 84
    iput-object p2, p0, Lcom/wandoujia/account/dto/AccountResponse;->msg:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/account/dto/AccountBean;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/wandoujia/account/dto/AccountResponse;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/wandoujia/account/dto/AccountResponse;->setMember(Lcom/wandoujia/account/dto/AccountBean;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/account/dto/AccountError;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/wandoujia/account/dto/AccountResponse;->setAccountError(Lcom/wandoujia/account/dto/AccountError;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/account/dto/AccountError;Lcom/wandoujia/account/dto/AccountBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/wandoujia/account/dto/AccountResponse;-><init>(Lcom/wandoujia/account/dto/AccountError;)V

    .line 79
    iput-object p2, p0, Lcom/wandoujia/account/dto/AccountResponse;->member:Lcom/wandoujia/account/dto/AccountBean;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/account/dto/AccountError;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/wandoujia/account/dto/AccountResponse;-><init>(Lcom/wandoujia/account/dto/AccountError;)V

    .line 94
    iput-object p2, p0, Lcom/wandoujia/account/dto/AccountResponse;->args:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>([Lcom/wandoujia/account/dto/AccountVerificationGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    sget-object v0, Lcom/wandoujia/account/dto/AccountError;->NEED_VERIFY_ACCOUNT:Lcom/wandoujia/account/dto/AccountError;

    invoke-direct {p0, v0}, Lcom/wandoujia/account/dto/AccountResponse;-><init>(Lcom/wandoujia/account/dto/AccountError;)V

    .line 89
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountResponse;->verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 90
    return-void
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountResponse;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/wandoujia/account/dto/AccountResponse;->error:I

    return v0
.end method

.method public getMember()Lcom/wandoujia/account/dto/AccountBean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountResponse;->member:Lcom/wandoujia/account/dto/AccountBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationGroups()[Lcom/wandoujia/account/dto/AccountVerificationGroup;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountResponse;->verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    return-object v0
.end method

.method public setAccountError(Lcom/wandoujia/account/dto/AccountError;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/account/dto/AccountResponse;->error:I

    .line 74
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/AccountError;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/dto/AccountResponse;->msg:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountResponse;->args:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setError(I)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/wandoujia/account/dto/AccountResponse;->error:I

    .line 23
    return-void
.end method

.method public setMember(Lcom/wandoujia/account/dto/AccountBean;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountResponse;->member:Lcom/wandoujia/account/dto/AccountBean;

    .line 39
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountResponse;->msg:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setVerificationGroups([Lcom/wandoujia/account/dto/AccountVerificationGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountResponse;->verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountResponse [error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wandoujia/account/dto/AccountResponse;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountResponse;->member:Lcom/wandoujia/account/dto/AccountBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
