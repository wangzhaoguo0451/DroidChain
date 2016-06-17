.class final Lgfn;
.super Ljava/lang/Object;
.source "VideoSectionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

.field private synthetic b:Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

.field private synthetic c:I

.field private synthetic d:Lgfl;


# direct methods
.method constructor <init>(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lgfn;->d:Lgfl;

    iput-object p2, p0, Lgfn;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iput-object p3, p0, Lgfn;->b:Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

    iput p4, p0, Lgfn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lgfn;->d:Lgfl;

    invoke-static {v0}, Lgfl;->a(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgfn;->d:Lgfl;

    invoke-static {v0}, Lgfl;->a(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    iget-object v1, p0, Lgfn;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lgfn;->d:Lgfl;

    invoke-static {v0, v2}, Lgfl;->b(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    .line 170
    iget-object v0, p0, Lgfn;->b:Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->b()V

    .line 183
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lgfn;->d:Lgfl;

    invoke-static {v0}, Lgfl;->b(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgfn;->d:Lgfl;

    invoke-static {v0}, Lgfl;->b(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    iget-object v1, p0, Lgfn;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lgfn;->d:Lgfl;

    invoke-static {v0, v2}, Lgfl;->a(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    .line 175
    iget-object v0, p0, Lgfn;->b:Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->b()V

    .line 176
    iget-object v0, p0, Lgfn;->b:Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->c()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lgfn;->d:Lgfl;

    iget-object v1, p0, Lgfn;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    invoke-static {v0, v1}, Lgfl;->b(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    .line 180
    iget-object v0, p0, Lgfn;->b:Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/view/VideoEpisodeSectionItem;->a()V

    .line 181
    iget-object v0, p0, Lgfn;->d:Lgfl;

    invoke-static {v0}, Lgfl;->c(Lgfl;)Lgfo;

    move-result-object v0

    iget-object v1, p0, Lgfn;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    iget v2, p0, Lgfn;->c:I

    invoke-virtual {v0, v1, v2}, Lgfo;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;I)V

    goto :goto_0
.end method
