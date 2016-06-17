.class public final Lcny;
.super Ljava/lang/Object;
.source "AccountDialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcny;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    new-instance v0, Lcih;

    iget-object v1, p0, Lcny;->a:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcih;-><init>(Landroid/widget/ImageView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcih;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    return-void
.end method
