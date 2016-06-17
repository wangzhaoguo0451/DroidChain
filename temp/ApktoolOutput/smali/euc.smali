.class public final Leuc;
.super Ljava/lang/Object;
.source "ScreenshotViewActivity.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Leuc;->a:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Leuc;->a:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->a(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->b(I)V

    .line 75
    return-void
.end method

.method public final a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 66
    return-void
.end method
