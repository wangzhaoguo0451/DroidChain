.class public final Lecy;
.super Ljava/lang/Object;
.source "StoryAppInfoCardView.java"

# interfaces
.implements Leix;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lecy;->a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lecy;->a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->b(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lecy;->a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->b(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    move-result-object v0

    return-object v0
.end method
