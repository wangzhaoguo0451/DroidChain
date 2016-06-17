.class final Lfh;
.super Lfg;
.source "LayoutInflaterCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Lfk;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    if-eqz p2, :cond_0

    new-instance v0, Lfj;

    invoke-direct {v0, p2}, Lfj;-><init>(Lfk;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
