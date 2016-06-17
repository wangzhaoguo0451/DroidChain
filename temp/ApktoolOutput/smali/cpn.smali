.class public final Lcpn;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/appmanager/AppManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/appmanager/AppManager;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcpn;->a:Lcom/wandoujia/appmanager/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcpn;->a:Lcom/wandoujia/appmanager/AppManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)V

    .line 316
    return-void
.end method
