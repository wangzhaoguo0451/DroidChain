.class public final Lfa;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# static fields
.field private static a:Lfd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Lfc;

    invoke-direct {v0}, Lfc;-><init>()V

    sput-object v0, Lfa;->a:Lfd;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lfd;

    invoke-direct {v0}, Lfd;-><init>()V

    sput-object v0, Lfa;->a:Lfd;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 188
    sget-object v0, Lfa;->a:Lfd;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lfd;->b(I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 192
    sget-object v0, Lfa;->a:Lfd;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lfd;->c(I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    sget-object v0, Lfa;->a:Lfd;

    invoke-virtual {v0, p0}, Lfd;->a(Landroid/view/KeyEvent;)V

    .line 197
    return-void
.end method
