.class final Lfdk;
.super Ljava/lang/Object;
.source "CommunityJoinGroupAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfdi;


# direct methods
.method constructor <init>(Lfdi;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lfdk;->a:Lfdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lfdk;->a:Lfdi;

    invoke-static {v0}, Lfdi;->a(Lfdi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ld;->t(Landroid/content/Context;)V

    .line 56
    return-void
.end method
