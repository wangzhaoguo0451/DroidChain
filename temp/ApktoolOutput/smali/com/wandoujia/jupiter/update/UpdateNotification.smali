.class public final Lcom/wandoujia/jupiter/update/UpdateNotification;
.super Ljava/lang/Object;
.source "UpdateNotification.java"


# instance fields
.field public a:Lcom/wandoujia/p4/views/CommonPopupView;

.field public b:Lhoj;

.field public c:Lhoj;

.field public d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

.field public e:Landroid/app/Activity;

.field public f:Z

.field private g:Ldwh;

.field private h:Lhhl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/wandoujia/update/toolkit/SelfUpdateResult;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ldvz;

    invoke-direct {v0, p0}, Ldvz;-><init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->h:Lhhl;

    .line 93
    iput-object p1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    .line 94
    iput-object p2, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    .line 95
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v0, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->installerPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->f:Z

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/update/UpdateNotification;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v1, v1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->installerPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lg;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->g:Ldwh;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->c()V

    new-instance v0, Ldwh;

    invoke-direct {v0, p0}, Ldwh;-><init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->g:Ldwh;

    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->g:Ldwh;

    invoke-virtual {v0}, Ldwh;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->g:Ldwh;

    iget-boolean v0, v0, Ldwh;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->g:Ldwh;

    invoke-virtual {v0}, Ldwh;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    new-instance v1, Ldwa;

    invoke-direct {v1, p0}, Ldwa;-><init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    new-instance v2, Ldwb;

    invoke-direct {v2}, Ldwb;-><init>()V

    invoke-static {v0, v1, v2}, Ldxa;->a(Landroid/content/Context;Lbtk;Lbtk;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 175
    return-void
.end method

.method public final b()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 183
    new-instance v2, Lhoq;

    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    const v1, 0x7f03017e

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 186
    invoke-virtual {v2, v1}, Lhoq;->a(Landroid/view/View;)Lhoq;

    .line 188
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v0, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 190
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e05cd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 191
    new-instance v0, Ldwc;

    invoke-direct {v0, p0}, Ldwc;-><init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    .line 204
    iget-object v4, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v4, v4, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v4}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 209
    const v0, 0x7f0c005e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v0, 0x7f0c0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    const v3, 0x7f0c0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 215
    iget-object v3, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v3, v3, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v3}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->STRONG:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    if-ne v3, v4, :cond_0

    .line 216
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v0, 0x7f0e05c6

    invoke-virtual {v2, v0}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0385

    new-instance v3, Ldwe;

    invoke-direct {v3, p0}, Ldwe;-><init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    invoke-virtual {v0, v1, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0370

    new-instance v3, Ldwd;

    invoke-direct {v3}, Ldwd;-><init>()V

    invoke-virtual {v0, v1, v3}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 248
    :goto_0
    invoke-virtual {v2}, Lhoq;->a()Lhoj;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->b:Lhoj;

    .line 249
    return-void

    .line 236
    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v3, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->h:Lhhl;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {v2, v7}, Lhoq;->a(Z)Lhoq;

    .line 240
    iget-object v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e05c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v4, v4, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v4}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-boolean v3, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->f:Z

    if-eqz v3, :cond_1

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e05c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const v0, 0x7f0e05c5

    invoke-virtual {v2, v0}, Lhoq;->a(I)Lhoq;

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wandoujia/p4/views/CommonPopupView;->a(Landroid/app/Activity;)Lcom/wandoujia/p4/views/CommonPopupView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    .line 256
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    const v1, 0x7f03017f

    invoke-static {v0, v1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 257
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/views/CommonPopupView;->setContentView(Landroid/view/View;)V

    .line 258
    const v0, 0x7f0c0078

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 259
    iget-object v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v1, v1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v1, v1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_1
    const v0, 0x7f0c01dd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 263
    iget-object v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->f:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0e05cc

    :goto_1
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v6, v6, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v6}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const v0, 0x7f0c005e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 268
    iget-object v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v1, v1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v0, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v3

    .line 270
    :goto_2
    if-eqz v1, :cond_2

    .line 271
    const v0, 0x7f0c038b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 272
    iget-object v3, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v3, v3, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v3}, Lcom/wandoujia/update/protocol/UpdateInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_2
    const v0, 0x7f0c0389

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 276
    const v0, 0x7f0c0002

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->h:Lhhl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v0, 0x7f0c0012

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->h:Lhhl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    new-instance v1, Lgpv;

    invoke-direct {v1, p0}, Lgpv;-><init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/CommonPopupView;->setOnDismissListener(Lgpv;)V

    goto/16 :goto_0

    .line 263
    :cond_3
    const v1, 0x7f0e05cb

    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 269
    goto :goto_2

    .line 274
    :cond_5
    const/16 v0, 0x8

    goto :goto_3
.end method
