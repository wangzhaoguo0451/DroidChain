.class final Leue;
.super Ljava/lang/Object;
.source "ScreenshotViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Leud;


# direct methods
.method constructor <init>(Leud;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Leue;->a:Leud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Leue;->a:Leud;

    iget-object v0, v0, Leud;->b:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->finish()V

    .line 114
    return-void
.end method
