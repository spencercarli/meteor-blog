Template.blogAdminEdit.rendered = ->
  post = Post.first()
  # if post
    # $('.rendered-markdown').html(post.html)
    # $('.CodeMirror-code').html(post.marked)
    # $('#entry-title').val(post.title)


Template.blogAdminEdit.events({
  'click [data-action=save]': (e) ->
    e.preventDefault()

    data = {
      html: $('.rendered-markdown').html()
      marked: $('.CodeMirror-code').html()
      title: $('#entry-title').val()
      slug: Post.slugify($('#entry-title').val())
    }

    Post.first().update(data)
})
