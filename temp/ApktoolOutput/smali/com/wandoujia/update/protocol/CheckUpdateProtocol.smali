.class public Lcom/wandoujia/update/protocol/CheckUpdateProtocol;
.super Ljava/lang/Object;
.source "CheckUpdateProtocol.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/update/protocol/CheckUpdateProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL:Ljava/lang/String; = "https://upgrade.wandoujia.com/upgrade"


# instance fields
.field public appName:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "app_name"
    .end annotation
.end field

.field public installedDays:J
    .annotation runtime Lcwj;
        a = "installage"
    .end annotation
.end field

.field public isOem:Z
    .annotation runtime Lcwj;
        a = "is_oem"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "language"
    .end annotation
.end field

.field public netSubtype:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "net_subtype"
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "net_type"
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "package_name"
    .end annotation
.end field

.field public protocolVersion:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "protocol_version"
    .end annotation
.end field

.field public rom:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "rom"
    .end annotation
.end field

.field public romVersion:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "rom_version"
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "source"
    .end annotation
.end field

.field public udid:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "udid"
    .end annotation
.end field

.field public versionCode:I
    .annotation runtime Lcwj;
        a = "version_code"
    .end annotation
.end field

.field public versionName:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "version_name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lhre;

    invoke-direct {v0}, Lhre;-><init>()V

    sput-object v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "1.0.0.1"

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->protocolVersion:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionCode:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->isOem:Z

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->installedDays:J

    .line 130
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "1.0.0.1"

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->protocolVersion:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionCode:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->isOem:Z

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->installedDays:J

    .line 125
    invoke-virtual {p0, p1}, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->readFromParcel(Landroid/os/Parcel;)V

    .line 126
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lhre;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->protocolVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->appName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->packageName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionCode:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->source:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->udid:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->language:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->isOem:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->rom:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->romVersion:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->netType:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->netSubtype:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->installedDays:J

    .line 111
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->udid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->isOem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->rom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->romVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->netType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->netSubtype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->installedDays:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
