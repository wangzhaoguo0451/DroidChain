.class public final Lfzc;
.super Ljava/lang/Object;
.source "MultimediaViewUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfzf;


# direct methods
.method public constructor <init>(Lfzf;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lfzc;->a:Lfzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    iget-object v0, p0, Lfzc;->a:Lfzf;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lfzc;->a:Lfzf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfzf;->a(Z)V

    .line 219
    :cond_0
    return-void
.end method
