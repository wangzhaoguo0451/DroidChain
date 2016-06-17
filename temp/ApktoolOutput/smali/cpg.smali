.class final Lcpg;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcpt;


# instance fields
.field private synthetic a:Lcom/wandoujia/appmanager/LocalAppInfo;

.field private synthetic b:Z


# direct methods
.method constructor <init>(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2045
    iput-object p1, p0, Lcpg;->a:Lcom/wandoujia/appmanager/LocalAppInfo;

    iput-boolean p2, p0, Lcpg;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 2
    .parameter

    .prologue
    .line 2048
    iget-object v0, p0, Lcpg;->a:Lcom/wandoujia/appmanager/LocalAppInfo;

    iget-boolean v1, p0, Lcpg;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V

    .line 2049
    return-void
.end method
