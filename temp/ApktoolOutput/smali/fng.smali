.class public final Lfng;
.super Ljava/lang/Object;
.source "CommunityDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lfng;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lfng;->a:Landroid/app/Activity;

    invoke-static {v0}, Ld;->t(Landroid/content/Context;)V

    .line 34
    return-void
.end method
