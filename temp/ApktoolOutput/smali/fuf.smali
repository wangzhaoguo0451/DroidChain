.class final Lfuf;
.super Ljava/lang/Object;
.source "PickUpGiftAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfue;


# direct methods
.method constructor <init>(Lfue;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lfuf;->a:Lfue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lfuf;->a:Lfue;

    iget-object v0, v0, Lfue;->a:Lfua;

    invoke-static {v0}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0351

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 193
    return-void
.end method
