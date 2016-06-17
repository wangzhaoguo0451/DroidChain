.class public final Lfni;
.super Ljava/lang/Object;
.source "CommunityDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lfni;->a:Ljava/lang/String;

    iput-object p2, p0, Lfni;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Lfdi;

    iget-object v1, p0, Lfni;->a:Ljava/lang/String;

    iget-object v2, p0, Lfni;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lfdi;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lfdi;->execute()V

    .line 61
    return-void
.end method
