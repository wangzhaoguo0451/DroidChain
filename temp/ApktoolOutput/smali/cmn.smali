.class public final Lcmn;
.super Ljava/lang/Object;
.source "WDJAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/ref/WeakReference;

.field private synthetic b:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcmn;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcmn;->b:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcmn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcmn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmk;

    iget-object v1, p0, Lcmn;->b:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    invoke-interface {v0, v1}, Lcmk;->a(Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V

    .line 134
    :cond_0
    return-void
.end method
