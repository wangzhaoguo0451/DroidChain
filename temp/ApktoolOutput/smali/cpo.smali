.class public final Lcpo;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcpt;

.field private synthetic b:Lcom/wandoujia/appmanager/LocalAppChangedListener;


# direct methods
.method public constructor <init>(Lcpt;Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcpo;->a:Lcpt;

    iput-object p2, p0, Lcpo;->b:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcpo;->a:Lcpt;

    iget-object v1, p0, Lcpo;->b:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-interface {v0, v1}, Lcpt;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 425
    return-void
.end method
