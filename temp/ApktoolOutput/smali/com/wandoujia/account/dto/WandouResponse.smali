.class public Lcom/wandoujia/account/dto/WandouResponse;
.super Ljava/lang/Object;
.source "WandouResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private args:Ljava/lang/String;

.field private error:I

.field private msg:Ljava/lang/String;

.field private verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/account/dto/WandouResponse;->error:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/account/dto/WandouResponse;->msg:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/wandoujia/account/dto/WandouResponse;->error:I

    .line 56
    iput-object p2, p0, Lcom/wandoujia/account/dto/WandouResponse;->msg:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Lcom/wandoujia/account/dto/AccountVerificationGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/wandoujia/account/dto/WandouResponse;->error:I

    .line 62
    iput-object p2, p0, Lcom/wandoujia/account/dto/WandouResponse;->msg:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/wandoujia/account/dto/WandouResponse;->verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Lcom/wandoujia/account/dto/AccountVerificationGroup;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/wandoujia/account/dto/WandouResponse;->error:I

    .line 69
    iput-object p2, p0, Lcom/wandoujia/account/dto/WandouResponse;->msg:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/wandoujia/account/dto/WandouResponse;->verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 71
    iput-object p4, p0, Lcom/wandoujia/account/dto/WandouResponse;->args:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/account/dto/AccountError;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/account/dto/WandouResponse;->error:I

    .line 77
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/AccountError;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/dto/WandouResponse;->msg:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>([Lcom/wandoujia/account/dto/AccountVerificationGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/wandoujia/account/dto/AccountError;->NEED_VERIFY_ACCOUNT:Lcom/wandoujia/account/dto/AccountError;

    invoke-direct {p0, v0}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(Lcom/wandoujia/account/dto/AccountError;)V

    .line 82
    iput-object p1, p0, Lcom/wandoujia/account/dto/WandouResponse;->verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 83
    return-void
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/account/dto/WandouResponse;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/wandoujia/account/dto/WandouResponse;->error:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/account/dto/WandouResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationGroups()[Lcom/wandoujia/account/dto/AccountVerificationGroup;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/account/dto/WandouResponse;->verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    return-object v0
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wandoujia/account/dto/WandouResponse;->args:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setError(I)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/wandoujia/account/dto/WandouResponse;->error:I

    .line 21
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wandoujia/account/dto/WandouResponse;->msg:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setVerificationGroups([Lcom/wandoujia/account/dto/AccountVerificationGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wandoujia/account/dto/WandouResponse;->verificationGroups:[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WandouResponse [error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wandoujia/account/dto/WandouResponse;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/WandouResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
