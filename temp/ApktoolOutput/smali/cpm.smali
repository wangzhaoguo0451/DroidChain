.class final Lcpm;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcpt;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/appmanager/LocalAppInfo;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2134
    iput-object p1, p0, Lcpm;->a:Ljava/lang/String;

    iput-object p2, p0, Lcpm;->b:Lcom/wandoujia/appmanager/LocalAppInfo;

    iput-boolean p3, p0, Lcpm;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 3
    .parameter

    .prologue
    .line 2137
    iget-object v0, p0, Lcpm;->a:Ljava/lang/String;

    iget-object v1, p0, Lcpm;->b:Lcom/wandoujia/appmanager/LocalAppInfo;

    iget-boolean v2, p0, Lcpm;->c:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V

    .line 2138
    return-void
.end method
