.class public Lcom/wandoujia/p4/pay/model/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private nick:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/Long;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/wandoujia/p4/pay/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/model/User;->TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/wandoujia/p4/pay/model/User$1;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/model/User$1;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/pay/model/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/model/User;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/User;->uid:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lcom/wandoujia/p4/pay/model/User;->nick:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/wandoujia/p4/pay/model/User;->username:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/wandoujia/p4/pay/model/User;->token:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->uid:Ljava/lang/Long;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->nick:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->username:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->token:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public fromJSON(Lorg/json/JSONObject;)Lcom/wandoujia/p4/pay/model/User;
    .locals 2
    .parameter

    .prologue
    .line 87
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->uid:Ljava/lang/Long;

    .line 88
    const-string v0, "nick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->nick:Ljava/lang/String;

    .line 89
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->username:Ljava/lang/String;

    .line 90
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->token:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->uid:Ljava/lang/Long;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/User;->nick:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/User;->token:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->uid:Ljava/lang/Long;

    .line 54
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/wandoujia/p4/pay/model/User;->username:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    :try_start_0
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/User;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "nick"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/User;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "username"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "token"

    iget-object v2, p0, Lcom/wandoujia/p4/pay/model/User;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/wandoujia/p4/pay/model/User;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
