.class public Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;
.super Ljava/lang/Object;
.source "AppHistoryInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field installedTime:J

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/wandoujia/entities/app/AppHistoryInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/app/AppHistoryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;->this$0:Lcom/wandoujia/entities/app/AppHistoryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstalledTime()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;->installedTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setInstalledTime(J)V
    .locals 1
    .parameter

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;->installedTime:J

    .line 342
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/wandoujia/entities/app/AppHistoryInfo$UserAppInfo;->packageName:Ljava/lang/String;

    .line 333
    return-void
.end method
