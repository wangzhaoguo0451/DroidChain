.class Lff;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Lfk;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    if-eqz p2, :cond_0

    new-instance v0, Lfi;

    invoke-direct {v0, p2}, Lfi;-><init>(Lfk;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
