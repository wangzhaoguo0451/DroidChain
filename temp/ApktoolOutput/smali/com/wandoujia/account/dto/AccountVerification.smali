.class public Lcom/wandoujia/account/dto/AccountVerification;
.super Ljava/lang/Object;
.source "AccountVerification.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private arg:Ljava/lang/String;

.field private method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountVerification;->method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    .line 30
    iput-object p2, p0, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 54
    :cond_3
    check-cast p1, Lcom/wandoujia/account/dto/AccountVerification;

    .line 56
    iget-object v2, p0, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 57
    :cond_6
    iget-object v2, p0, Lcom/wandoujia/account/dto/AccountVerification;->method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    iget-object v3, p1, Lcom/wandoujia/account/dto/AccountVerification;->method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getArg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerification;->method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerification;->method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerification;->method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->hashCode()I

    move-result v0

    .line 65
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 66
    return v0

    :cond_1
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public setArg(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMethod(Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountVerification;->method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountVerification{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountVerification;->method:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountVerification;->arg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
