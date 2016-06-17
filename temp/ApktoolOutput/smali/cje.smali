.class final Lcje;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/dto/WandouResponse;

.field private synthetic b:Lcja;


# direct methods
.method constructor <init>(Lcja;Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcje;->b:Lcja;

    iput-object p2, p0, Lcje;->a:Lcom/wandoujia/account/dto/WandouResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcje;->b:Lcja;

    iget-object v0, v0, Lcja;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcje;->b:Lcja;

    iget-object v0, v0, Lcja;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    iget-object v1, p0, Lcje;->a:Lcom/wandoujia/account/dto/WandouResponse;

    invoke-interface {v0, v1}, Lcmh;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 964
    :cond_0
    return-void
.end method
