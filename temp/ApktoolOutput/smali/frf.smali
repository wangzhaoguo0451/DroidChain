.class final Lfrf;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lfre;


# direct methods
.method constructor <init>(Lfre;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lfrf;->a:Lfre;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lfrf;->a:Lfre;

    iget-object v0, v0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setSelected(Z)V

    .line 181
    return-void
.end method
