.class public Lcom/wandoujia/clean/db/model/GarbageBean;
.super Ljava/lang/Object;
.source "GarbageBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FLAG_NO_FOREGROUND_SCAN:I = 0x1

.field public static final PATH_TYPE_AD_FOLDER:I = 0x3

.field public static final PATH_TYPE_CACHE:I = 0x1

.field public static final PATH_TYPE_CACHE_REG:I = 0x4

.field public static final PATH_TYPE_SOFT_DETAIL:I = 0x5

.field public static final PATH_TYPE_SYSTEM_CACHE:I = 0x2

.field private static final serialVersionUID:J = 0x2c9b614aed7b20bfL


# instance fields
.field public alertInfo:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public contentType:I

.field public deleted:Z

.field public desc:Ljava/lang/String;

.field public flag:I

.field public id:I

.field public latestModification:J

.field public pathMd5:Ljava/lang/String;

.field public pathType:I

.field public pkgNameMd5:Ljava/lang/String;

.field public regPkgName:Ljava/lang/String;

.field public rootPathMd5:Ljava/lang/String;

.field public simpleAlertInfo:Ljava/lang/String;

.field public subPath:Ljava/lang/String;

.field public subPathLevel:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isForegroundScan()Z
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/wandoujia/clean/db/model/GarbageBean;->flag:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
