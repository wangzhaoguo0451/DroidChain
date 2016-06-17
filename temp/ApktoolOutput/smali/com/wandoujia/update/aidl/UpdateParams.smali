.class public Lcom/wandoujia/update/aidl/UpdateParams;
.super Lcom/wandoujia/update/LocalUpdateService$UpdateParams;
.source "UpdateParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/update/aidl/UpdateParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lhrd;

    invoke-direct {v0}, Lhrd;-><init>()V

    sput-object v0, Lcom/wandoujia/update/aidl/UpdateParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/wandoujia/update/aidl/UpdateParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lhrd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/update/aidl/UpdateParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;-><init>()V

    .line 51
    iget-object v0, p1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iput-object v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    .line 52
    iget-wide v0, p1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->updateDelayMs:J

    iput-wide v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->updateDelayMs:J

    .line 53
    iget-wide v0, p1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->updateDurationMs:J

    iput-wide v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->updateDurationMs:J

    .line 54
    iget-boolean v0, p1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->downloadInstallerOnlyOnWifi:Z

    iput-boolean v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->downloadInstallerOnlyOnWifi:Z

    .line 55
    iget v0, p1, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->notificationIcon:I

    iput v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->notificationIcon:I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iput-object v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->updateDelayMs:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->updateDurationMs:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->downloadInstallerOnlyOnWifi:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->notificationIcon:I

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->writeToParcel(Landroid/os/Parcel;I)V

    .line 21
    iget-wide v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->updateDelayMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    iget-wide v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->updateDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23
    iget-boolean v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->downloadInstallerOnlyOnWifi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    iget v0, p0, Lcom/wandoujia/update/aidl/UpdateParams;->notificationIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
