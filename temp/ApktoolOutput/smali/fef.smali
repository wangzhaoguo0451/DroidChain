.class final Lfef;
.super Ljava/lang/Object;
.source "CommunityPostNewTopicAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfed;


# direct methods
.method constructor <init>(Lfed;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lfef;->a:Lfed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lfef;->a:Lfed;

    invoke-static {v0}, Lfed;->a(Lfed;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ld;->t(Landroid/content/Context;)V

    .line 64
    return-void
.end method
