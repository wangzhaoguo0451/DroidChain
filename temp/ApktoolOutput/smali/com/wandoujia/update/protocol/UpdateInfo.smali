.class public Lcom/wandoujia/update/protocol/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/update/protocol/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final UPDATE_YES:Ljava/lang/String; = "yes"

.field private static final serialVersionUID:J = -0x7524835cdb8e7cd1L


# instance fields
.field protected apkSize:J
    .annotation runtime Lcwj;
        a = "apk_size"
    .end annotation
.end field

.field protected downloadUrl:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "download_url"
    .end annotation
.end field

.field protected ekey:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "ekey"
    .end annotation
.end field

.field protected md5:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "md5"
    .end annotation
.end field

.field protected priority:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "priority"
    .end annotation
.end field

.field protected update:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "update"
    .end annotation
.end field

.field protected updateLog:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "update_log"
    .end annotation
.end field

.field protected updateSubTitle:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "update_sub_title"
    .end annotation
.end field

.field protected updateTitle:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "update_title"
    .end annotation
.end field

.field protected version:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lhrf;

    invoke-direct {v0}, Lhrf;-><init>()V

    sput-object v0, Lcom/wandoujia/update/protocol/UpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->update:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->WEAK:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->priority:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->version:Ljava/lang/String;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->apkSize:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->md5:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateTitle:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateSubTitle:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateLog:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->downloadUrl:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->ekey:Ljava/lang/String;

    .line 153
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->update:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->WEAK:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->priority:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->version:Ljava/lang/String;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->apkSize:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->md5:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateTitle:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateSubTitle:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateLog:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->downloadUrl:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->ekey:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 149
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lhrf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/update/protocol/UpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getApkSize()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->apkSize:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->ekey:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->priority:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->valueOf(Ljava/lang/String;)Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateLog:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasNewVersion()Z
    .locals 2

    .prologue
    .line 86
    const-string v0, "yes"

    iget-object v1, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->update:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/wandoujia/update/protocol/UpdateInfo;->hasNewVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateLog:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateSubTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->version:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->downloadUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v2, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->apkSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->update:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->priority:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->version:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->apkSize:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->md5:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateTitle:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateSubTitle:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateLog:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->downloadUrl:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->update:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->priority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-wide v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->apkSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->updateLog:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/wandoujia/update/protocol/UpdateInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void
.end method
