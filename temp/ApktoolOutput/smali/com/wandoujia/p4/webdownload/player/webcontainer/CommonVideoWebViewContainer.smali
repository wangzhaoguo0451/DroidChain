.class public Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;
.super Landroid/widget/RelativeLayout;
.source "CommonVideoWebViewContainer.java"

# interfaces
.implements Lgwl;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$layout;->common_video_webview_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 84
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->d:Landroid/webkit/WebView;

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    const/4 v1, 0x3

    sget v2, Lcom/wandoujia/p4/webdownload/lib/R$id;->play_exp_menu_layout:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;ZLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 79
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 55
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->play_exp_back_btn:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->a:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->a:Landroid/view/View;

    new-instance v1, Lgwj;

    invoke-direct {v1, p0}, Lgwj;-><init>(Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->play_exp_refresh_btn:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->b:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->b:Landroid/view/View;

    new-instance v1, Lgwk;

    invoke-direct {v1, p0}, Lgwk;-><init>(Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->play_exp_origin_url_text:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->c:Landroid/widget/TextView;

    .line 75
    return-void
.end method
