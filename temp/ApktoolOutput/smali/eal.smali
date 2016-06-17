.class public final Leal;
.super Lear;
.source "CasualItemController.java"


# instance fields
.field public a:I

.field public b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

.field c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

.field private final d:Leis;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lear;-><init>()V

    .line 44
    new-instance v0, Leam;

    invoke-direct {v0, p0}, Leam;-><init>(Leal;)V

    iput-object v0, p0, Leal;->d:Leis;

    .line 158
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;Leax;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lear;->a(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;Leax;)V

    .line 171
    iput-object p1, p0, Leal;->c:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    .line 173
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->getCasualItemView()Leaz;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 175
    iget-object v1, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->e(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Leal;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0}, Leaz;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p2}, Leax;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v0}, Leaz;->a()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v1

    invoke-interface {p2}, Leax;->c()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$drawable;->game_icon_placehoder:I

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v0}, Leaz;->a()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v1

    new-instance v2, Leao;

    invoke-direct {v2, v0, p2}, Leao;-><init>(Leaz;Leax;)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Leal;->d:Leis;

    new-instance v2, Leap;

    invoke-direct {v2, v0}, Leap;-><init>(Leaz;)V

    iget-object v3, p0, Leal;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v3}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v3

    new-instance v4, Leiv;

    invoke-direct {v4, v3}, Leiv;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo;)V

    invoke-virtual {v1, v2, v4}, Leis;->a(Leix;Leiu;)V

    .line 206
    iget-object v1, v0, Leaz;->a:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/icon/FolderItemView;->d(Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0x4130

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setTextSize(IF)V

    .line 208
    invoke-virtual {v0}, Leaz;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Leal;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leal;->b:Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;->getAppLiteInfo()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    .line 211
    :cond_0
    return-void
.end method
