.class public final Lcrc;
.super Ljava/lang/Thread;
.source "AlarmService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/base/services/AlarmService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/base/services/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcrc;->a:Lcom/wandoujia/base/services/AlarmService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcrc;->a:Lcom/wandoujia/base/services/AlarmService;

    #calls: Lcom/wandoujia/base/services/AlarmService;->handleChecker()V
    invoke-static {v0}, Lcom/wandoujia/base/services/AlarmService;->access$200(Lcom/wandoujia/base/services/AlarmService;)V

    .line 198
    return-void
.end method
