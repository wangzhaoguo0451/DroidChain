.class public final Ldfr;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Ldfr;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iput p2, p0, Ldfr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Ldfr;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->f(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Lhz;

    move-result-object v0

    iget v1, p0, Ldfr;->a:I

    invoke-virtual {v0, v1}, Lhz;->a(I)V

    .line 281
    return-void
.end method
