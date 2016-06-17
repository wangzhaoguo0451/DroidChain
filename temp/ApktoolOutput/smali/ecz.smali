.class public final Lecz;
.super Ljava/lang/Object;
.source "StoryAppInfoCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/entities/game/GameLiteInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/game/GameLiteInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lecz;->a:Lcom/wandoujia/entities/game/GameLiteInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 105
    new-instance v0, Leda;

    invoke-direct {v0}, Leda;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lecz;->a:Lcom/wandoujia/entities/game/GameLiteInfo;

    invoke-virtual {v3}, Lcom/wandoujia/entities/game/GameLiteInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Leda;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method
