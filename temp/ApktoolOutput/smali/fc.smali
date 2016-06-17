.class final Lfc;
.super Lfb;
.source "KeyEventCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lfb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 147
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 157
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method
