.class final Lv;
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
    .line 455
    iput-object p1, p0, Lv;->a:Lu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lv;->a:Lu;

    invoke-virtual {v0}, Lu;->h()Z

    .line 459
    return-void
.end method
