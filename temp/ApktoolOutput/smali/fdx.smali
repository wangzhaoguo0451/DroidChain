.class final Lfdx;
.super Ljava/lang/Object;
.source "CommunityOpenNominateAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfdv;


# direct methods
.method constructor <init>(Lfdv;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lfdx;->a:Lfdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lfdx;->a:Lfdv;

    invoke-static {v0}, Lfdv;->a(Lfdv;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->t(Landroid/content/Context;)V

    .line 41
    return-void
.end method
