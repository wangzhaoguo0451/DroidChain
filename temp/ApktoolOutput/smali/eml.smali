.class public final Leml;
.super Ljava/lang/Object;
.source "LogReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/log/LogConfiguration;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/wandoujia/log/LogReporter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/log/LogReporter;Lcom/wandoujia/log/LogConfiguration;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Leml;->c:Lcom/wandoujia/log/LogReporter;

    iput-object p2, p0, Leml;->a:Lcom/wandoujia/log/LogConfiguration;

    iput-object p3, p0, Leml;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Leml;->c:Lcom/wandoujia/log/LogReporter;

    #getter for: Lcom/wandoujia/log/LogReporter;->commonParams:Ljava/util/Map;
    invoke-static {v0}, Lcom/wandoujia/log/LogReporter;->access$000(Lcom/wandoujia/log/LogReporter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leml;->a:Lcom/wandoujia/log/LogConfiguration;

    iget-object v2, p0, Leml;->b:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/wandoujia/log/LogConfiguration;->buildStableCommonParams(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    return-void
.end method
