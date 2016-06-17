.class public Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;
.super Ljava/lang/Object;
.source "PeriodReporter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2cea28ca9b714181L


# instance fields
.field firstInstallTime:J

.field lastUpdateTime:J

.field packageName:Ljava/lang/String;

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;->packageName:Ljava/lang/String;

    .line 202
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;->versionCode:I

    .line 203
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;->versionName:Ljava/lang/String;

    .line 204
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;->firstInstallTime:J

    .line 205
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;->lastUpdateTime:J

    .line 206
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageInfo;Lcsk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/wandoujia/clean/reporter/PeriodReporter$PackageBean;-><init>(Landroid/content/pm/PackageInfo;)V

    return-void
.end method
