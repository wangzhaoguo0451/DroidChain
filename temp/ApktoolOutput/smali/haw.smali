.class public Lhaw;
.super Lhaz;
.source "CommonListAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lhaz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 179
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_empty_view:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 180
    new-instance v1, Lerf;

    invoke-direct {v1, v0}, Lerf;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;Lerf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;I)Lerf;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-static {}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->values()[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    move-result-object v0

    aget-object v1, v0, p2

    .line 58
    const/4 v0, 0x0

    sget-object v2, Lhax;->a:[I

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 61
    :goto_0
    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, p1, v1}, Lhaw;->a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;

    move-result-object v0

    .line 65
    :cond_0
    invoke-virtual {p0, v1, v0}, Lhaw;->a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;Lerf;)V

    .line 66
    return-object v0

    .line 58
    :pswitch_0
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_article_text:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lerf;

    invoke-direct {v2, v0}, Lerf;-><init>(Landroid/view/View;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->text:I

    new-instance v3, Lhix;

    invoke-direct {v3, v5}, Lhix;-><init>(B)V

    invoke-virtual {v2, v0, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->text:I

    sget-object v3, Lham;->f:Lham;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lhjd;

    invoke-direct {v3}, Lhjd;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_article_image:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lham;->f:Lham;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Lerf;

    invoke-direct {v2, v0}, Lerf;-><init>(Landroid/view/View;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->image:I

    new-instance v3, Ldly;

    invoke-direct {v3}, Ldly;-><init>()V

    invoke-virtual {v2, v0, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_article_video:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lham;->f:Lham;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Lerf;

    invoke-direct {v2, v0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v0, Lhjd;

    invoke-direct {v0}, Lhjd;-><init>()V

    invoke-virtual {v2, v5, v0, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_article_image:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lerf;

    invoke-direct {v2, v0}, Lerf;-><init>(Landroid/view/View;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->image:I

    new-instance v3, Lhjl;

    invoke-direct {v3}, Lhjl;-><init>()V

    invoke-virtual {v2, v0, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_article_header:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lerf;

    invoke-direct {v2, v0}, Lerf;-><init>(Landroid/view/View;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->title:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v2, v0, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->summary:I

    new-instance v3, Lhiy;

    invoke-direct {v3, v5}, Lhiy;-><init>(B)V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->author:I

    new-instance v3, Lhir;

    invoke-direct {v3, v5}, Lhir;-><init>(B)V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_article_footer:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lham;->f:Lham;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Ld;->b(Landroid/view/ViewGroup;)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->error_report:I

    new-instance v3, Lhis;

    invoke-direct {v3}, Lhis;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Ldlb;

    invoke-direct {v2}, Ldlb;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_feed_provider_meta:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lham;->f:Lham;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Lerf;

    invoke-direct {v2, v0}, Lerf;-><init>(Landroid/view/View;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->icon:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v2, v0, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->title:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->summary:I

    new-instance v3, Lhik;

    invoke-direct {v3}, Lhik;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->footer_container:I

    new-instance v3, Lhjd;

    invoke-direct {v3}, Lhjd;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->main_button:I

    new-instance v3, Ldkv;

    invoke-direct {v3}, Ldkv;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->follow:I

    new-instance v3, Ldni;

    invoke-direct {v3}, Ldni;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->copyright:I

    new-instance v3, Lhiu;

    invoke-direct {v3}, Lhiu;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhij;

    invoke-direct {v2}, Lhij;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_empty_view:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lerf;

    invoke-direct {v2, v0}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v0, Lhig;

    invoke-direct {v0}, Lhig;-><init>()V

    invoke-virtual {v2, v5, v0, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_video_attachment:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    new-instance v3, Lerf;

    invoke-direct {v3, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->icon:I

    new-instance v2, Lhip;

    invoke-direct {v2}, Lhip;-><init>()V

    invoke-virtual {v3, v0, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->title:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->sub_title:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhio;

    invoke-direct {v2}, Lhio;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhje;

    invoke-direct {v2}, Lhje;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_detail_app_attachment:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    new-instance v3, Lerf;

    invoke-direct {v3, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->icon:I

    new-instance v2, Lhjb;

    invoke-direct {v2}, Lhjb;-><init>()V

    invoke-virtual {v3, v0, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->title:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->sub_title:I

    new-instance v3, Lhin;

    invoke-direct {v3}, Lhin;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhil;

    invoke-direct {v2}, Lhil;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->action_button:I

    new-instance v3, Lhib;

    invoke-direct {v3}, Lhib;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_feed_video_attachment:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v2}, Ld;->m(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_feed_app_attachment:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    invoke-static {v0, v2}, Ld;->m(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_feed_single_pic:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    sget-object v3, Lham;->f:Lham;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lerf;

    invoke-direct {v3, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Lhks;

    invoke-direct {v0}, Lhks;-><init>()V

    invoke-virtual {v3, v5, v0, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhkx;

    invoke-direct {v2}, Lhkx;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Ldnf;

    invoke-direct {v2}, Ldnf;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->root:I

    new-instance v3, Lhid;

    invoke-direct {v3}, Lhid;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhif;

    invoke-direct {v2}, Lhif;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhiz;

    sget-object v3, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->WHITE:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    invoke-direct {v2, v3}, Lhiz;-><init>(Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;)V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_feed_short_text:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    sget-object v3, Lham;->f:Lham;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lerf;

    invoke-direct {v3, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->snippet:I

    new-instance v2, Lhjb;

    invoke-direct {v2}, Lhjb;-><init>()V

    invoke-virtual {v3, v0, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhkx;

    invoke-direct {v2}, Lhkx;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Ldnf;

    invoke-direct {v2}, Ldnf;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Ldqk;

    invoke-direct {v2}, Ldqk;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhkv;

    invoke-direct {v2}, Lhkv;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhif;

    invoke-direct {v2}, Lhif;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhiz;

    sget-object v3, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->DARK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    invoke-direct {v2, v3}, Lhiz;-><init>(Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;)V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->lite_info_item:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    sget-object v3, Lham;->f:Lham;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lerf;

    invoke-direct {v3, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->title:I

    new-instance v2, Lhiq;

    invoke-direct {v2}, Lhiq;-><init>()V

    invoke-virtual {v3, v0, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->summary:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->description:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->sub_title:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->icon:I

    new-instance v3, Lhjb;

    invoke-direct {v3}, Lhjb;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->root:I

    new-instance v3, Lhid;

    invoke-direct {v3}, Lhid;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhif;

    invoke-direct {v2}, Lhif;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_feed_text:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    sget-object v3, Lham;->f:Lham;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lerf;

    invoke-direct {v3, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Lhju;

    invoke-direct {v0}, Lhju;-><init>()V

    invoke-virtual {v3, v5, v0, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhkx;

    invoke-direct {v2}, Lhkx;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->cover:I

    new-instance v3, Lhjl;

    invoke-direct {v3}, Lhjl;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhiz;

    sget-object v3, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->DARK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    invoke-direct {v2, v3}, Lhiz;-><init>(Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;)V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Ldnf;

    invoke-direct {v2}, Ldnf;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->root:I

    new-instance v3, Lhid;

    invoke-direct {v3}, Lhid;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhif;

    invoke-direct {v2}, Lhif;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_feed_filter_text:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    sget-object v3, Lham;->f:Lham;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lerf;

    invoke-direct {v3, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v0, Lhku;

    invoke-direct {v0}, Lhku;-><init>()V

    invoke-virtual {v3, v5, v0, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhkx;

    invoke-direct {v2}, Lhkx;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->cover:I

    new-instance v3, Lhjt;

    invoke-direct {v3}, Lhjt;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhiz;

    sget-object v3, Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;->DARK:Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;

    invoke-direct {v2, v3}, Lhiz;-><init>(Lcom/wandoujia/ripple_framework/view/ToolbarMenuThemeBinder$Theme;)V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Ldnf;

    invoke-direct {v2}, Ldnf;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    sget v2, Lcom/wandoujia/ripple_framework/R$id;->root:I

    new-instance v3, Lhid;

    invoke-direct {v3}, Lhid;-><init>()V

    invoke-virtual {v0, v2, v3, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhif;

    invoke-direct {v2}, Lhif;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->jupiter_single_text:I

    invoke-static {p1, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhaz;->f:Lhas;

    new-instance v3, Lerf;

    invoke-direct {v3, v0, v2}, Lerf;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->description:I

    new-instance v2, Lhjb;

    invoke-direct {v2}, Lhjb;-><init>()V

    invoke-virtual {v3, v0, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v2, Lhii;

    invoke-direct {v2}, Lhii;-><init>()V

    invoke-virtual {v0, v5, v2, v5}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
