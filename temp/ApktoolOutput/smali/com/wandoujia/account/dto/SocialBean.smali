.class public Lcom/wandoujia/account/dto/SocialBean;
.super Ljava/lang/Object;
.source "SocialBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonFilter;
    value = "social_bean_filter"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6198260c5994096L


# instance fields
.field private accessToken:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private bindTime:Ljava/util/Date;

.field private data:Ljava/lang/String;

.field private fromUid:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private platform:Lcom/wandoujia/account/dto/Platform;

.field private refreshToken:Ljava/lang/String;

.field private valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/account/dto/SocialBean;->valid:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    if-ne p0, p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    check-cast p1, Lcom/wandoujia/account/dto/SocialBean;

    .line 125
    iget-object v2, p0, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 126
    iget-object v2, p1, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/wandoujia/account/dto/SocialBean;->platform:Lcom/wandoujia/account/dto/Platform;

    iget-object v3, p1, Lcom/wandoujia/account/dto/SocialBean;->platform:Lcom/wandoujia/account/dto/Platform;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 131
    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBindTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->bindTime:Ljava/util/Date;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Lcom/wandoujia/account/dto/Platform;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->platform:Lcom/wandoujia/account/dto/Platform;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/wandoujia/account/dto/SocialBean;->platform:Lcom/wandoujia/account/dto/Platform;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 113
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->platform:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/Platform;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/SocialBean;->valid:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/account/dto/SocialBean;->accessToken:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/account/dto/SocialBean;->avatar:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setBindTime(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wandoujia/account/dto/SocialBean;->bindTime:Ljava/util/Date;

    .line 64
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wandoujia/account/dto/SocialBean;->data:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFromUid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/wandoujia/account/dto/SocialBean;->nick:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPlatform(Lcom/wandoujia/account/dto/Platform;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/wandoujia/account/dto/SocialBean;->platform:Lcom/wandoujia/account/dto/Platform;

    .line 48
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/account/dto/SocialBean;->refreshToken:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/wandoujia/account/dto/SocialBean;->valid:Z

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SocialBean [platform="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->platform:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->fromUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshTokenString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bindTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->bindTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/SocialBean;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
