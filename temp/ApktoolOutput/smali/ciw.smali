.class final Lciw;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcit;


# direct methods
.method constructor <init>(Lcit;)V
    .locals 0
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lciw;->a:Lcit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lciw;->a:Lcit;

    iget-object v0, v0, Lcit;->a:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lciw;->a:Lcit;

    iget-object v0, v0, Lcit;->a:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    invoke-direct {v1}, Lcom/wandoujia/account/dto/WandouResponse;-><init>()V

    invoke-interface {v0, v1}, Lcmh;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 1038
    :cond_0
    return-void
.end method
