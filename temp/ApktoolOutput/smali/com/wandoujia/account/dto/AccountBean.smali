.class public Lcom/wandoujia/account/dto/AccountBean;
.super Ljava/lang/Object;
.source "AccountBean.java"

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
    value = "account_bean_filter"
.end annotation


# static fields
.field public static final defaultFields:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x66da5b7790a5859dL


# instance fields
.field private avatar:Ljava/lang/String;

.field private complete:Z

.field private devices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/DeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private emailValidated:Z

.field private enabled:Z

.field private needUpdatePassword:Z

.field private nick:Ljava/lang/String;

.field private registerChannel:Ljava/lang/String;

.field private registerSource:Lcom/wandoujia/account/dto/RegisterSource;

.field private roles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/Role;",
            ">;"
        }
    .end annotation
.end field

.field private socials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/SocialBean;",
            ">;"
        }
    .end annotation
.end field

.field private telephone:Ljava/lang/String;

.field private telephoneValidated:Z

.field private trusted:Z

.field private uid:Ljava/lang/Long;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "avatar"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/account/dto/AccountBean;->defaultFields:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->socials:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->devices:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->roles:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addDevice(Lcom/wandoujia/account/dto/DeviceBean;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->devices:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->devices:Ljava/util/Set;

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/DeviceBean;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/dto/AccountBean;->removeDevice(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->devices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public addSocial(Lcom/wandoujia/account/dto/SocialBean;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->socials:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->socials:Ljava/util/Set;

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/SocialBean;->getPlatform()Lcom/wandoujia/account/dto/Platform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/dto/AccountBean;->removeSocial(Lcom/wandoujia/account/dto/Platform;)V

    .line 105
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->socials:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/DeviceBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->devices:Ljava/util/Set;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->registerChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterSource()Lcom/wandoujia/account/dto/RegisterSource;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->registerSource:Lcom/wandoujia/account/dto/RegisterSource;

    return-object v0
.end method

.method public getRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->roles:Ljava/util/Set;

    return-object v0
.end method

.method public getSocials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/SocialBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->socials:Ljava/util/Set;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->uid:Ljava/lang/Long;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->complete:Z

    return v0
.end method

.method public isEmailValidated()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->emailValidated:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->enabled:Z

    return v0
.end method

.method public isNeedUpdatePassword()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->needUpdatePassword:Z

    return v0
.end method

.method public isTelephoneValidated()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->telephoneValidated:Z

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->trusted:Z

    return v0
.end method

.method public removeDevice(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->devices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/DeviceBean;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/DeviceBean;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method public removeSocial(Lcom/wandoujia/account/dto/Platform;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->socials:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/SocialBean;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/SocialBean;->getPlatform()Lcom/wandoujia/account/dto/Platform;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->avatar:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setComplete(Z)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/wandoujia/account/dto/AccountBean;->complete:Z

    .line 190
    return-void
.end method

.method public setDevices(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/DeviceBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->devices:Ljava/util/Set;

    .line 141
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->emailValidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->email:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->emailValidated:Z

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->email:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setEmailValidated(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/wandoujia/account/dto/AccountBean;->emailValidated:Z

    .line 82
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/wandoujia/account/dto/AccountBean;->enabled:Z

    .line 230
    return-void
.end method

.method public setNeedUpdatePassword(Z)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/wandoujia/account/dto/AccountBean;->needUpdatePassword:Z

    .line 214
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->nick:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRegisterChannel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->registerChannel:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setRegisterSource(Lcom/wandoujia/account/dto/RegisterSource;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->registerSource:Lcom/wandoujia/account/dto/RegisterSource;

    .line 198
    return-void
.end method

.method public setRoles(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/Role;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->roles:Ljava/util/Set;

    .line 149
    return-void
.end method

.method public setSocials(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/wandoujia/account/dto/SocialBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->socials:Ljava/util/Set;

    .line 98
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->telephoneValidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->telephone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/dto/AccountBean;->telephone:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/account/dto/AccountBean;->telephoneValidated:Z

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->telephone:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setTelephoneValidated(Z)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/wandoujia/account/dto/AccountBean;->telephoneValidated:Z

    .line 90
    return-void
.end method

.method public setTrusted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/wandoujia/account/dto/AccountBean;->trusted:Z

    .line 206
    return-void
.end method

.method public setUid(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->uid:Ljava/lang/Long;

    .line 58
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/wandoujia/account/dto/AccountBean;->username:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountBean [uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telephone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailValidated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wandoujia/account/dto/AccountBean;->emailValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telephoneValidated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wandoujia/account/dto/AccountBean;->telephoneValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", socials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->socials:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->devices:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->roles:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", registerSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/AccountBean;->registerSource:Lcom/wandoujia/account/dto/RegisterSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needUpdatePassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wandoujia/account/dto/AccountBean;->needUpdatePassword:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wandoujia/account/dto/AccountBean;->trusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wandoujia/account/dto/AccountBean;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
