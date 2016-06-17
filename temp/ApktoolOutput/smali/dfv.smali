.class final Ldfv;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ldfu;


# direct methods
.method constructor <init>(Ldfu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Ldfv;->b:Ldfu;

    iput p2, p0, Ldfv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Ldfv;->b:Ldfu;

    iget-object v0, v0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    iget v1, p0, Ldfv;->a:I

    iget-object v2, p0, Ldfv;->b:Ldfu;

    iget-object v2, v2, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ldgb;->a(I)V

    .line 530
    return-void
.end method
