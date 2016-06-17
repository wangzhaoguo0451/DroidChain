.class final Lx;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lu;


# direct methods
.method constructor <init>(Lu;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lx;->c:Lu;

    iput p2, p0, Lx;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lx;->c:Lu;

    iget-object v1, p0, Lx;->c:Lu;

    iget-object v1, v1, Lu;->g:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Lx;->a:I

    iget v2, p0, Lx;->b:I

    invoke-virtual {v0, v1, v2}, Lu;->a(II)Z

    .line 533
    return-void
.end method
