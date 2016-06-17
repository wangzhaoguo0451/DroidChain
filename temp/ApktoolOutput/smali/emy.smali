.class public final Lemy;
.super Ljava/lang/Object;
.source "LogReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

.field private synthetic b:Lemw;


# direct methods
.method public constructor <init>(Lemw;Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lemy;->b:Lemw;

    iput-object p2, p0, Lemy;->a:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lemy;->b:Lemw;

    iget-object v1, p0, Lemy;->b:Lemw;

    invoke-static {v1}, Lemw;->b(Lemw;)Lemu;

    iget-object v1, p0, Lemy;->a:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    iget-object v2, p0, Lemy;->b:Lemw;

    invoke-static {v2}, Lemw;->a(Lemw;)Lcom/wandoujia/logv3/model/packages/CommonPackage;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    invoke-direct {v3, v2}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/CommonPackage;)V

    invoke-virtual {v3, v1}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->launch_source_package(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CommonPackage;

    move-result-object v1

    invoke-static {v0, v1}, Lemw;->a(Lemw;Lcom/wandoujia/logv3/model/packages/CommonPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage;

    .line 88
    return-void
.end method
