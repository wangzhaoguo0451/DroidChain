.class public Lcom/wandoujia/account/dto/AccountVerificationGroup;
.super Ljava/lang/Object;
.source "AccountVerificationGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private token:Ljava/lang/String;

.field private verifications:[Lcom/wandoujia/account/dto/AccountVerification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/wandoujia/account/dto/AccountVerification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    .line 32
    return-void
.end method

.method public constructor <init>([Lcom/wandoujia/account/dto/AccountVerification;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 57
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

    .line 59
    :cond_3
    check-cast p1, Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 61
    iget-object v2, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 62
    :cond_6
    iget-object v2, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    iget-object v3, p1, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifications()[Lcom/wandoujia/account/dto/AccountVerification;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 70
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 71
    return v0

    :cond_1
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVerifications([Lcom/wandoujia/account/dto/AccountVerification;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    .line 40
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountVerificationGroup{verifications="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->verifications:[Lcom/wandoujia/account/dto/AccountVerification;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountVerificationGroup;->token:Ljava/lang/String;

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
