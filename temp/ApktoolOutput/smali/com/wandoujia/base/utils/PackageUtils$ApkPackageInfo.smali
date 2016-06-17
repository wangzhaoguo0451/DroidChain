.class public Lcom/wandoujia/base/utils/PackageUtils$ApkPackageInfo;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# instance fields
.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/base/utils/PackageUtils$ApkPackageInfo;->versionCode:I

    return-void
.end method
