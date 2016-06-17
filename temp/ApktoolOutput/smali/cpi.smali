.class final Lcpi;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcpt;


# instance fields
.field private synthetic a:Lcom/wandoujia/appmanager/LocalAppInfo;

.field private synthetic b:Lcom/wandoujia/appmanager/LocalAppInfo;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2084
    iput-object p1, p0, Lcpi;->a:Lcom/wandoujia/appmanager/LocalAppInfo;

    iput-object p2, p0, Lcpi;->b:Lcom/wandoujia/appmanager/LocalAppInfo;

    iput-boolean p3, p0, Lcpi;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 3
    .parameter

    .prologue
    .line 2087
    iget-object v0, p0, Lcpi;->a:Lcom/wandoujia/appmanager/LocalAppInfo;

    iget-object v1, p0, Lcpi;->b:Lcom/wandoujia/appmanager/LocalAppInfo;

    iget-boolean v2, p0, Lcpi;->c:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V

    .line 2088
    return-void
.end method
