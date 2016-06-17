.class final Lw;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lu;


# direct methods
.method constructor <init>(Lu;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lw;->a:Lu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lw;->a:Lu;

    iget-object v1, p0, Lw;->a:Lu;

    iget-object v1, v1, Lu;->g:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lu;->a(II)Z

    .line 498
    return-void
.end method
