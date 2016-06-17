.class Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x21

    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryItems:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 558
    const/4 v0, -0x2

    if-eq p4, v0, :cond_5

    .line 560
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->details:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$700(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryChildrenItems:Ljava/util/List;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$800(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;

    .line 567
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 568
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->category:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$902(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 572
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 573
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryItems:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 575
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 576
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->details:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$700(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 577
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->spinner:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->getTextSize()F

    move-result v0

    const/high16 v5, 0x40a0

    sub-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v4, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 581
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0a0195

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v4, v0, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 584
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->spinner:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :goto_2
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryItems:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentMainCategoryValue:Ljava/lang/String;

    .line 593
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    :goto_3
    #setter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->isOthers:Z
    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$1102(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;Z)Z

    .line 594
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->updateFeedbackDescriptionUI()V

    .line 596
    :cond_2
    return v2

    .line 577
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 581
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 586
    :cond_5
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryItems:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->category:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$902(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->spinner:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    move-result-object v1

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$CategorySpinnerSelectedListener;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->categoryItems:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCategoryItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 593
    goto :goto_3
.end method
