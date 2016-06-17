.class public Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;
.super Ljava/lang/Object;
.source "WebDownloadPage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lgrn;

    invoke-direct {v0}, Lgrn;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/WebDownloadType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    instance-of v0, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    check-cast p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;

    iget-object v2, p1, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
