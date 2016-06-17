.class public final Lcos;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Lcom/wandoujia/appmanager/AppManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/appmanager/AppManager;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcos;->b:Lcom/wandoujia/appmanager/AppManager;

    iput-object p2, p0, Lcos;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1308
    iget-object v0, p0, Lcos;->b:Lcom/wandoujia/appmanager/AppManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcos;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->b(Lcom/wandoujia/appmanager/AppManager;Ljava/util/List;)Z

    .line 1309
    return-void
.end method
